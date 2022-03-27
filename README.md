# NTFT

The Normal Time-frequency Transform by time-function

标准时频变换是线性时频变换的标准化形式。该概念诞生于2009年，由柳林涛提出。标准时频变换可以用来提取时间序列中的周期或准周期信号，由此也可以实现对信号的预测。标准时频变换还可以应用于时间序列的常规时频分析（振幅分析和相位分析）。标准时频变换理论与应用一直处于发展之中。

## 定义

对于时间函数<img src="https://latex.codecogs.com/svg.latex?f%28t%29">, 其线性时频变换可以定义为

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/formula/8ebf34035f3012b8c42ffd23660b983c.svg" style="border:none;">
</div>

其中：

<img src="https://bkimg.cdn.bcebos.com/formula/ff2b49f4999e38a46bcb3c4cdbccfa4f.svg">表示当地时间，也可被认为考察时刻；

<img src="https://bkimg.cdn.bcebos.com/formula/6e997aa5812ef7bd11b9c1a5ee4def5e.svg">表示当地频率，也可被认为考察频率；


上划线表示共轭算子；

<img src="https://bkimg.cdn.bcebos.com/formula/1964ec61a3797b9a2b1786217556716b.svg" stype="border:none">称为核函数。

一个线性时频变换<img src="https://bkimg.cdn.bcebos.com/formula/40ad481f04f04fa78e7aad8ac8a02b7b.svg">被称为一个标准时频变换，如果其核函数<img src="https://bkimg.cdn.bcebos.com/formula/1964ec61a3797b9a2b1786217556716b.svg">的傅里叶变换

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/formula/f19624254f77f4c87201128f89097053.svg">
</div>

满足

i) <img src="https://bkimg.cdn.bcebos.com/formula/70c5b110f911f674a1663c2d71e91e8b.svg">, 当<img src="https://bkimg.cdn.bcebos.com/formula/742dfb397c64c470350f28ee445f6194.svg">;

ii) <img src="https://bkimg.cdn.bcebos.com/formula/663ba120fa2064045f4a1317d705dfc5.svg">, 当<img src="https://bkimg.cdn.bcebos.com/formula/742dfb397c64c470350f28ee445f6194.svg">。

解释：首先，标准时频变换是以<img src="https://bkimg.cdn.bcebos.com/formula/6e997aa5812ef7bd11b9c1a5ee4def5e.svg">为索引下的卷积，这是它的本质之一。在这一点上它与小波变换类似，但它与短时傅里叶变换及S变换有着本质的区别。其次，标准时频变换有着如条件i)和ii)所示的标准化含义，这种含义将在如下的描述中体现出意义。

## 无为方法

对于一个和谐信号

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/formula/78eff37db19e7bd598c4f42139b2c482.svg">
</div>

其中<img src="https://bkimg.cdn.bcebos.com/formula/dabc72fc2f9f3c171f2032f8c0773dba.svg">是复数振幅、<img src="https://bkimg.cdn.bcebos.com/formula/ea027d6202a985007785bbb2f1642553.svg">是角频率、<img src="https://bkimg.cdn.bcebos.com/formula/49c7a096b82ec7b8a0ed619edd1329d2.svg">是初相位，其标准时频变换<img src="https://bkimg.cdn.bcebos.com/formula/bf12fc2debfeb0296d207893d292f6b9.svg">满足如下关系

1） <img src="https://bkimg.cdn.bcebos.com/formula/46e6d92aa5c004e07c14c6ff96418dd1.svg">

2）<img src="https://bkimg.cdn.bcebos.com/formula/dc48e47dc117f280f81d27736ecb2375.svg">

其中<img src="https://bkimg.cdn.bcebos.com/formula/a131c1e27b2abb83d5ca521073c27334.svg">表示“当且仅当”，<img src="https://bkimg.cdn.bcebos.com/formula/b7b1cb5a55a94c102664ddddbac53bf8.svg">表示“对于任意”，<img src="https://latex.codecogs.com/svg.latex?R">表示实数域。

上述就是所谓的无为原理，它可简述为：一个和谐信号的标准时频变换沿谱脊线的取值正是这个和谐信号本身。关系1）表明，一个和谐信号的标准时频谱（振幅谱）极大值可以确定出这个和谐信号的频率<img src="https://bkimg.cdn.bcebos.com/formula/ea027d6202a985007785bbb2f1642553.svg">和振幅<img src="https://latex.codecogs.com/svg.latex?%5Cleft%20%7C%20A%20%5Cright%20%7C">，而关系 2）则表明沿着谱极大值线（脊线），和谐信号自动就显现出来（包含了当地相位）。这里，和谐信号的显现既没有利用逆变换，也没有利用滤波手段。如果非要说滤波，无为原理揭示的也是一种“线通”滤波思想。

无为原理于2007被柳林涛发现 ，它是提出标准时频变换这一概念的基础。无为原理于2016年被俄罗斯科学家利用小波变换再次宣布。

利用无为原理，人们可以提取时间序列中的周期项，更广义地讲，可以利用无为原理提取序列中的准周期项（如Chirp信号）。这种利用无为原理提取时间序列中周期及准周期项的方法称为无为方法。无为方法具体操作如下：对时间序列做标准时频变换，再得到时频谱，找到谱脊线，沿着谱脊线的标准时频变换值就是对周期信号的提取或对准周期信号的逼近。

2016年，王国成发现了无为方法的鲁棒性。也就是说，无为方法这种线通滤波手段有很好的抗噪声能力，这是NTFT理论上的进展。

## 逆变换

行文至此，人们还不知道标准时频变换的核函数的具体表达式，但可以给出NTFT的逆变换如下

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/formula/69fc7ba82bbd1cefe6aa92daba032ed5.svg">
</div>

这个公式于2009年给出，它是反卷积定理的一个简单推论。该逆变换公式与上述的无为原理共同构成标准时频变换的理论基础。该逆变换可用于时频滤波。不过由于实际数据往往含有噪声，时频滤波很难隔离噪声的影响，这限制了逆变换的实际应用。

## 核函数

标准时频变换的核函数<img src="https://bkimg.cdn.bcebos.com/formula/c88c9a6b1986c2c03c82470eb82c9204.svg">可具体表达为多种形式，这里尝试给出如下形式，

<img src="https://bkimg.cdn.bcebos.com/formula/8b54b68b0118e06152f6956cf4f58e44.svg">

其中

<img src="https://bkimg.cdn.bcebos.com/formula/9b38cfc55a611e2efa3f81b19154df9c.svg">是无量纲的尺度调整函数；

<img src="https://bkimg.cdn.bcebos.com/formula/5fd26b6347776f54bea1448e6c195406.svg">是一个标准窗。

标准窗的定义为：<img src="https://bkimg.cdn.bcebos.com/formula/5fd26b6347776f54bea1448e6c195406.svg">被称为一个标准窗，如果其傅里叶变换满足：

i) <img src="https://bkimg.cdn.bcebos.com/formula/70c5b110f911f674a1663c2d71e91e8b.svg">, 当<img src="https://bkimg.cdn.bcebos.com/formula/742dfb397c64c470350f28ee445f6194.svg">;

ii) <img src="https://bkimg.cdn.bcebos.com/formula/663ba120fa2064045f4a1317d705dfc5.svg">, 当<img src="https://bkimg.cdn.bcebos.com/formula/742dfb397c64c470350f28ee445f6194.svg">。

一个经典的标准窗是标准高斯窗，如下

<img src="https://bkimg.cdn.bcebos.com/formula/cca793b049821b3d48dbb6162e9795af.svg">

其中<img src="https://bkimg.cdn.bcebos.com/formula/29ecac7d98ef7b8b7d4399a961ff7b42.svg">为正的常数，它与t同量纲

至此，人们可以检验一下：<img src="https://latex.codecogs.com/svg.latex?f%28t%29">与它的标准时频变换<img src="https://bkimg.cdn.bcebos.com/formula/40ad481f04f04fa78e7aad8ac8a02b7b.svg">是同量纲的，这是无为原理能够成立的一种原因。

无量纲的尺度调整函数可以有无限种设置形式。当设置<img src="https://bkimg.cdn.bcebos.com/formula/6a68f91298949ce230b39d548a374226.svg">，标准时频变换就是一种标准加伯变换（或标准短时傅里叶变换），这时，传统加伯变换已经由非卷积形式变为卷积形式了。当设置<img src="https://bkimg.cdn.bcebos.com/formula/76337bd04c8b5bcb3272de9cfe19889f.svg">，标准时频变换就是一种标准小波变换，只是这种小波变换是L1-norm形式，而非传统的L2-norm形式。当<img src="https://bkimg.cdn.bcebos.com/formula/2992fd4963c1d8d29432c4a86d64d0bd.svg">设置成其他形式，如<img src="https://bkimg.cdn.bcebos.com/formula/9291768acbd7595c8751d88cd51c30d8.svg">，这时的标准时频变换就是一种未被探索的新变换了。

在具体的应用中，一般可采用标准加伯变换或标准小波变换。

## 时频谱

标准时频变换提供两种谱：振幅谱和相位谱。由振幅谱可以观察信号振幅及频率随着时间的变化，由相位谱可以看出信号相位随着时间的分布。如果f(t)是复数，则<img src="https://bkimg.cdn.bcebos.com/formula/17d819fb4ff814fe81811249da3c12d5.svg">就是其振幅谱，

而<img src="https://bkimg.cdn.bcebos.com/formula/bf12fc2debfeb0296d207893d292f6b9.svg">的实部与虚部共同组成其相位谱。如果f(t)是实数（见图1），

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/pic/d000baa1cd11728b50711a96c4fcc3cec3fd2c21?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto" width="800">
</div>

<div align=center>
图1 实数信号
</div>

则<img src="https://bkimg.cdn.bcebos.com/formula/5e959b943b5261cb4f09ecf69eb75f2a.svg">就是其振幅谱（见图2），

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/pic/cefc1e178a82b9011ef155877f8da9773912ef22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyMjA=,g_7,xp_5,yp_5/format,f_auto" width="800">
</div>

<div align=center>
图2 振幅谱
</div>

而<img src="https://bkimg.cdn.bcebos.com/formula/fed6aa5be6c1af5d0a9d9dae202b9e38.svg">的实部即其相位谱（见图3）。

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/pic/5366d0160924ab18a750778339fae6cd7b890b3b?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto" width="800">
</div>

<div align=center>
图3 相位谱
</div>

## 预测模型

对于如上的和谐信号<img src="https://latex.codecogs.com/svg.latex?h%28t%29">，如果我们通过无为方法确定了其在<img src="https://bkimg.cdn.bcebos.com/formula/ff2b49f4999e38a46bcb3c4cdbccfa4f.svg">时刻的值<img src="https://bkimg.cdn.bcebos.com/formula/20562c0d38f6d9739496d6c2d8bbbcb7.svg">及其频率<img src="https://bkimg.cdn.bcebos.com/formula/ea027d6202a985007785bbb2f1642553.svg">，那么，该和谐信号在未来时刻<img src="https://bkimg.cdn.bcebos.com/formula/412b8557925159098e53feaafac9ab42.svg">的值可以如下预测：

<div align=center>
<img src="https://bkimg.cdn.bcebos.com/formula/c92940420cd52af79b87dfda0dabdb68.svg">
</div>

这就是标准时频变换用来预测的基本模型。

## 边缘效应

标准时频变换普遍存在边缘效应。这一效应是指变换在数据的头尾附近产生畸变。产生边缘效应的本质原因在数据头尾以外的数据未知。如何有效地减缓边缘效应是时频分析领域的重要课题，尤其对于预测学十分重要。相关研究正在进行。
