if exist('../+caffe', 'dir')
  addpath('..');
else
  error('Please run this demo from caffe/matlab/demo');
end
  caffe.set_mode_gpu();
  gpu_id = 0;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);

net_weights = ['/model/scene_patchnet/scene_patchnet.caffemodel'];
net_model = ['/model/scene_patchnet/bn_patch_kernel4_deploy.prototxt'];
phase = 'test'; % run with phase test (so that dropout isn't applied)
if ~exist(net_weights, 'file')
  error('Please download CaffeNet from Model Zoo before you run this demo');
end

% Initialize a network
net = caffe.Net(net_model, net_weights, phase);
for i=1:6700
    im_data = imread('/path/to/your/image_data/');
    if(size(im_data,3)~=3)
       im_data = cat(3,im_data,im_data,im_data); 
    end
    im_data = im_data(:,:,[3,2,1]);  % convert from RGB to BGR
    im_data = permute(im_data,[2,1,3]);% permute width and height
    im_data = single(im_data); % convert to single precision
    scale = 256;
    if size(im_data,1)~= scale || size(im_data,2)~=scale
        im_data = imresize(im_data,[scale,scale],'bilinear');
    end
    im_data = bsxfun(@minus, im_data, reshape([104, 117, 123], [1,1,3]));
    crop_num = 10; crop_dim = 64;
    crop_data_1 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 80;
    crop_data_2 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 96;
    crop_data_3 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 112;
    crop_data_4 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 128;
    crop_data_5 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 144;
    crop_data_6 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 160;
    crop_data_7 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 176;
    crop_data_8 = multi_crop(im_data,crop_num,crop_dim);
    crop_num = 10; crop_dim = 192;
    crop_data_9 = multi_crop(im_data,crop_num,crop_dim);
    input_data = cat(4,crop_data_1,crop_data_2,crop_data_3,crop_data_5,crop_data_7,crop_data_8,crop_data_9);
    input_data = single(input_data);
    for k=1:18
    net.blobs('data').set_data(input_data(:,:,:,(k-1)*100+1:k*100));
    net.forward_prefilled();
    feature_global_tmp = squeeze(net.blobs('global_pool').get_data());
    feature_fc_tmp = squeeze(net.blobs('fc').get_data());
    if k==1
    feature_global =   feature_global_tmp;
    feature_fc = feature_fc_tmp;
    else
    feature_global = cat(2,feature_global,feature_global_tmp);
    feature_fc= cat(2,feature_fc,feature_fc_tmp);
    end
    end
    save_globalpath=('/path/to/your/vsad/save/path') ;
    save(save_globalpath,'feature_global');
    i
 end
caffe.reset_all();
