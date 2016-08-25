function vsad = vsad_encoding(features,encoders,scores,codebook_selected,Id)


encoder.numWords = codebook_selected;
encoder.priors = encoders.priors(Id);
encoder.means = encoders.means(:,Id);
descrs = features;

vsad = encode_one(descrs,encoder,scores,codebook_selected,Id);
function code = encode_one(descr,encoder,scores,codebook_selected,Id)
        descrs = descr;
        P = labels;
        P(find(P<1e-4)) = 0;
        P1 = P(Id,:);
        P = P1;
        [m n] = sort(P,'descend');
        mask = zeros(size(P,1),size(P,2));
        for nn = 1:size(mask,2)
        mask(n(1:10,nn),nn) = 1;
        end
        P1 = mask;
        P = P1:
        dimension = size(descrs,1);
        uprefix = 1./(sqrt(encoder.priors));
        vprefix = 1./(sqrt(2*encoder.priors));
        z = zeros(2*dimension*encoder.numWords,1);
        for gmm_i = 1:encoder.numWords
            if encoder.priors(gmm_i)<1e-6,
                continue;
            end
            diff = bsxfun(@minus,descrs,encoder.means(:,gmm_i));
            
            % mean
            z((gmm_i-1)*dimension+1:gmm_i*dimension) = ...
                uprefix(gmm_i)*sum(bsxfun(@times,P(gmm_i,:), diff),2);
            % var
            z(encoder.numWords*dimension+(gmm_i-1)*dimension+1:encoder.numWords*dimension+gmm_i*dimension) = ...
                vprefix(gmm_i)*sum(bsxfun(@times,P(gmm_i,:), diff.^2 - 1),2);
        end
        code = z(:)';
