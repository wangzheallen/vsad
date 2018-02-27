<p>this is the release code for <strong>Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition</strong>:</p>

<pre><code>Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition
Zhe Wang, Limin Wang, Yali Wang, Bowen Zhang, and Yu Qiao
</code></pre>
<p>The performance is as below: </p> 
<table><thead>
<tr>
<th align="center">acc</th>
<th align="center">MIT_indoor</th>
<th align="center">SUN397</th>
</tr>
</thead><tbody>
<tr>
<td align="center">mean:</td>
<td align="center">78.5</td>
<td align="center">63.5</td>
</tr>
<tr>
<td align="center">VLAD:</td>
<td align="center">83.9</td>
<td align="center">70.1</td>
</tr>
<tr>
<td align="center">FV</td>
<td align="center">83.6</td>
<td align="center">69.0</td>
</tr>
<tr>
<td align="center">VSAD</td>
<td align="center">84.9</td>
<td align="center">71.7</td>
</tr>
</tbody></table>

<p>Note: The encoding method based on our <strong>scene_patchenet</strong> feature surpass human performance on sun397(68.5%).</p>
<h4>Feature</h4>
we released the concise and effective feature for MIT indoor feature, it is notated as <strong>hybrid_PatchNet+VSAD</strong> in the paper which obtains <strong>86.1</strong> accuracy. You can use it as baseline or as complementary feature for further study.
<ul>
<li><a href="http://mmlab.siat.ac.cn/mit_hybrid_vsad.mat">mit_hybrid_vsad.mat</a></li>
<li><a href="https://drive.google.com/open?id=1i3uwjWBeO2ke9Ikai_XpQPHjpXEnuH9h">mit_hybrid_vsad.mat, Google_drive</a></li>
</ul>
<table><thead>
<tr>
<th align="center">acc on MIT</th>
<th align="center">dimension</th>
<th align="center">storage</th>
</tr>
</thead><tbody>
<tr>
<td align="center">86.1</td>
<td align="center">100*256*2*2</td>
<td align="center">1.9G</td>
</tr>
</tbody></table>


<h4>Model</h4>
<p>Our trained <strong>scene_patchnet</strong> and <strong>object_patchenet</strong>, the model is based on cudnn_v4, if your system is based on cudnn_v5, you can use the code below cudnn_v4 to cudnn_v5: https://github.com/yjxiong/caffe/blob/action_recog/python/bn_convert_style.py </p> 

<table><thead>
<tr>
<th align="center">acc</th>
<th align="center">Top5</th>
</tr>
</thead><tbody>
<tr>
<td align="center">Object_patchnet_on_ImageNet:</td>
<td align="center">85.3</td>
</tr>
<tr>
<td align="center">Scene_patchnet_on_Places205:</td>
<td align="center">82.7</td>
</tr>
</tbody></table>

<p>They both take 128 * 128 patches as input.</p>

<h4>Code</h4> 
<ul>
<li>mit_hybrid_vsad.mat     -- you can use this feature as your baseline or to concatenate for further study, it is only 100*256*2*2 dimensions while performs <strong>86.1</strong> acc on MIT indoor, you can download from <a href="http://mmlab.siat.ac.cn/mit_hybrid_vsad.mat">mit_hybrid_vsad.mat</a></li>
<li>extracting_feature_exmaple.m     -- you can use this code as template to extract scene_patchnet_feature or object_patchnet_probability, for scene_patchnet_feature it is global average pool feature and for for object_patchnet_probability it is fully connnect feature with softmax function</li>
<li>for_encoder_scene67.mat          -- serve as assist to your handle on MIT_indoor dataset, from vl_feat</li> 
<li>for_encoder_sun397.mat           -- serve as assist to your handle on sun397 dataset</li> 
<li>mit_pca.mat                      -- our generated scene_patchnet_feature pca matrix for mit indoor, used in vsad_encoding_example.m</li>
<li>mit_vsad_codebook.mat            -- our generated semantical codebook for mit_indoor, used in vsad_encoding_example.m</li> 
<li>multi_crop.m                     -- dense crop as 10 * 10 grid, used in extracting_feature_example.m</li> 
<li>object_selection_256.mat         -- 256 objects selected from 1000(in ImageNet), applied to both MIT_indoor and SUN397</li> 
<li>sun_pca.mat                      -- our generated scene_patchnet_feature pca matrix for sun397, used in vsad_encoding_example.m</li> 
<li>sun_vsad_codebook.mat            -- our generated semantical codebookfor sun397, used in vsad_encoding_example.m</li> 
<li>vsad_encoding_example.m          -- an example for VSAD encoding algorithm</li> 
<li>vsad_encoding.m                  -- our developed VSAD encoding function</li>
<li>plot_mit_sun.m                     -- Plot the figure in the below of this page</li>
<li>xticklabel_rotate.m                  -- Serve for plot_mit_sun and rotate the text in the figure</li>
</ul>

<h4>Usage</h4> 
<p>1. Download code and model</p>
<p>2. Extract scene_net_feature and object_net_probability (extracting_feature_example.m, multi_crop.m)</p>
<p>3. VSAD encoding (vsad_encoding.m, vsad_encoding_example.m, mit_pca.mat, mit_vsad_codebook.mat, object_selection_256.mat)</p>


<p>Contact </p>

<ul>
<li><a href="http://wangzheallen.github.io/">Zhe Wang</a></li>
<li><a href="http://wanglimin.github.io/">Limin Wang</a></li>
</ul>

<p> Figure Plot for Reference </p>

![Alt text](https://github.com/wangzheallen/vsad/blob/master/4.png)


</li>
</ul></h></td>
</tbody></th>
</tr>
</thead></table></p></code></pre></strong></p>
