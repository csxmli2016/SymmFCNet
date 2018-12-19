# [SymmFCNet](#)
 Torch implementation for [Learning Symmetry Consistent Deep CNNs for Face Completion](#)

# SymmFCNet framework
Overview of our SymmFCNet. <B>Red</B>, <B>green</B> and <B>blue</B> lines represent the pixel-wise correspondence between the input and the flip image. 
- <B>Red</B>: missing pixels (input) to non-occluded pixels (flip); 
- <B>Green</B>: missing pixels (input) to missing pixels (flip); 
- <B>Blue</B>: remaining pixels (input) to remaining pixels (flip).

<img src="./Imgs/Pipeline/SymmFC.png">

# Models
Download the pre-trained model with the following url and put it into ./checkpoints/.
- [BaiduNetDisk](https://pan.baidu.com/s/1V3DglQr6Wx8idMgYUQBhuw)
- [GoogleDrive](https://drive.google.com/open?id=1uSjcNHvcI_mcbei_oOhs8cnDqpuw6Gnh)

# Testing

```bash
th test.lua
```
## Completion results
 <table style="float:center">
 <tr>
  <th><B>Type</B></th><th><B>Input</B></th><th><B>Ours</B></th><th><B>Ground-truth</B></th>
 </tr>
 <tr>
  <td>
   <p>Regular Mask</p>
  </td>
  <td>
  <img src='./Imgs/Images/10_i.png'>
  </td>
  <td>
   <img src='./Imgs/Images/10_o.png'>
  </td>
  <td>
   <img src='./Imgs/Images/10_g.png'>
  </td>
  </tr>
  <tr>
  <td>
   <p>Irregular Mask</p>
  </td>
  <td>
  <img src='./Imgs/Images/3_i.png'>
  </td>
  <td>
   <img src='./Imgs/Images/3_o.png'>
  </td>
  <td>
   <img src='./Imgs/Images/3_g.png'>
  </td>
  </tr>
 <tr>
  <td>
   <p>Real Image</p>
  </td>
  <td>
  <img src='./Imgs/Images/6_i.png'>
  </td>
  <td>
   <img src='./Imgs/Images/6_o.png'>
  </td>
  <td>
   <img src='./Imgs/Images/6_g.png'>
  </td>
  </tr>
 </table>
# Requirements and Dependencies

- [Torch](https://github.com/torch/distro)
- [Cuda](https://developer.nvidia.com/cuda-toolkit-archive)-8.0
- [Stn](https://github.com/qassemoquab/stnbhwd)
