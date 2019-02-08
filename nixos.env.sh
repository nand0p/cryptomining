CUDA_INC_PATH=/usr/local/cuda/include
CUDA_LIB_PATH=/nix/store/rbgydxcjdw577ykyxlyds73daxhf91qj-cudatoolkit-9.1.85.1-lib/lib
 cmake -DHUNTER_JOBS_NUMBER=4 -DETHASHCUDA=ON -DETHASHCL=OFF -DAPICORE=ON -DHUNTER_ENABLED=OFF -ETHDBUS=ON -H. -Bbuild
