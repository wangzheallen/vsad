

%% Taking MIT_indoor for example

load('for_encoder_scene67.mat');
codebook_selected = 256;
dim = 1024;
numClusters = 256;
load('object_selection_256.mat'); 
Id = selection_object;
PCA = load('mit_pca.mat');
vsad_codebook = load(['mit_vsad_codebook.mat');
    for i = 1:6700
        i
        tic;
        load(['/path/to/your/scene_net/feature']);
        load(['/path/to/your/object_net/probability']);
        feature = scene_net_feature;
        feature = bsxfun(@minus,feature,PCA.mu);
        feature = PCA.U(:,1:dim)'*feature;
        feature = bsxfun(@rdivide,feature,sqrt(PCA.vars(1:dim)));
        vsad_codebook.numWords = numClusters;
        score_softmax = objet_net_probability;
        coding = vsad_encoding(feature,vsad_codebook,score_softmax,codebook_selected,Id);
        coding = coding';
        save(['/path/to/save/your/vsad']);
        toc;
    end

