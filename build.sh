 export SUBARCH=arm64
 
 #Defconfig for Moto C
-make -C $PWD O=$PWD/out ARCH=arm64 wt6737m_65_n_defconfig
+make -C $PWD O=$PWD/out ARCH=arm 64 rlk6737m_open_n_defconfig
 #make ARCH=arm64 wt6737m65_n_defconfig
 
 make -j4 -C $PWD O=$PWD/out ARCH=arm64
