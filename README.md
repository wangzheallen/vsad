<p>this is the release code for <strong>Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition</strong>:</p>

<pre><code>Weakly Supervised PatchNets: Describing and Aggregating Local Patches for Scene Recognition
Zhe Wang, Limin Wang, Yali Wang, Bowen Zhang, and Yu Qiao
</code></pre>
<h4>Feature</h4>
<p>You can directly download our VSAD/FV/VLAD feature based on scene patchenet from the link: </p>

<p>VLAD: </p>
<p>FV: </p>
<p>VSAD: </p>



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

<p>Note: The encoding method based on our scene_patchenet feature surpass human performance on sun397(68%).</p>

<h4>Model</h4>
<p>Our trained scene_patchnet and object_patchenet, the model is based on cudnn_v4, if your system is based on cudnn_v5, you can use the code below cudnn_v4 to cudnn_v5: https://github.com/yjxiong/caffe/blob/action_recog/python/bn_convert_style.py </p> 

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
<td align="center">Scene_patchnet_on_Places</td>
<td align="center">82.7</td>
</tr>
</tbody></table>

<p>They both take 128*128 patches as input.</p>

<h4>code</h4> 
<ul>
<li>extracting_feature_exmaple.m     -- you can use this code as template to extract scene_patchnet_feature or object_patchnet_probability</li>
<li>for_encoder_scene67.mat          -- serve as assist to your handle on MIT_indoor dataset, from vl_feat</li> 
<li>for_encoder_sun397.mat           -- serve as assist to your handle on sun397 dataset</li> 
<li>mit_pca.mat                      -- our generated scene_patchnet_feature pca matrix for mit indoor, used in vsad_encoding_example.m</li>
<li>mit_vsad_codebook.mat            -- our generated semantical codebook for mit_indoor, used in vsad_encoding_example.m</li> 
<li>multi_crop.m                     -- dense crop as 10 multiply 10 grid, used in extracting_feature_example.m</li> 
<li>object_selection_256.mat         -- 256 objects selected from 1000(in ImageNet), applied to both MIT_indoor and SUN397</li> 
<li>sun_pca.mat                      -- our generated scene_patchnet_feature pca matrix for sun397, used in vsad_encoding_example.m</li> 
<li>sun_vsad_codebook.mat            -- our generated semantical codebookfor sun397, used in vsad_encoding_example.m</li> 
<li>vsad_encoding_example.m          -- an example for VSAD encoding algorithm</li> 
<li>vsad_encoding.m                  -- our developed VSAD encoding function</li>
</ul>

<p>Contact </p>

<ul>
<li><a href="http://wangzheallen.github.io/">Zhe Wang</a></li>
<li><a href="http://wanglimin.github.io/">Limin Wang</a></li>
</ul>


</li>
</ul></td>
</tbody></th>
</tr>
</thead></table></p></h></code></pre></strong></p>
