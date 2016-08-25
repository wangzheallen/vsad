lease code for ''Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition'' 


--- feature You can directly download our VSAD/FV/VLAD feature based on scene patchenet from the link: 

VLAD: 
FV: 
VSAD:

The performance is as below: 

        MIT_indoor SUN397 
          mean:   78.5      63.5 
            VLAD:   83.9      70.1 
              FV:     83.6      69.0 
                VSAD:   84.9      71.7

                Note: The encoding method based on our scene_patchenet feature outperform human performance on sun397(68%).

                --- model Our trained scene_patchnet and object_patchenet, the model is based on cudnn_v4, if your system is based on cudnn_v5, you can use the code below cudnn_v4 to cudnn_v5: https://github.com/yjxiong/caffe/blob/action_recog/python/bn_convert_style.py 


                                             Top5 acc 
                                             Object_patchnet_on_ImageNet: 85.3% 
                                             Scene_patchnet_on_Places:    82.7% 

                                               They both take 128*128 patches as input.

                                               --- code 
                                               extracting_feature_exmaple.m     -- you can use this code as template to extract scene_patchnet_feature or object_patchnet_probability 
                                               for_encoder_scene67.mat          -- serve as assist to your handle on MIT_indoor dataset, from vl_feat 
                                               for_encoder_sun397.mat           -- serve as assist to your handle on sun397 dataset 
                                               mit_pca.mat                      -- our generated scene_patchnet_feature pca matrix for mit indoor, used in vsad_encoding_example.m 
                                               mit_vsad_codebook.mat            -- our generated semantical codebook for mit_indoor, used in vsad_encoding_example.m 
                                               multi_crop.m                     -- dense crop as 10 multiply 10 grid, used in extracting_feature_example.m 
                                               object_selection_256.mat         -- 256 objects selected from 1000(in ImageNet), applied to both MIT_indoor and SUN397 
                                               sun_pca.mat                      -- our generated scene_patchnet_feature pca matrix for sun397, used in vsad_encoding_example.m 
                                               sun_vsad_codebook.mat            -- our generated semantical codebookfor sun397, used in vsad_encoding_example.m 
                                               vsad_encoding_example.m          -- an example for VSAD encoding algorithm 
                                               vsad_encoding.m                  -- our developed VSAD encoding function


                                               If you have any question, feel free to contact: 
                                               Zhe Wang: buptwangzhe2012 -AT- gmail dot com 
                                               Limin Wang: lmwang.nju@gmail.com

                                               Please cite the paper if you find this code/model/feature useful 
                                               Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition 
                                               Zhe Wang, Limin Wang, Yali Wang, Bowen Zhang, and Yu Qiao
