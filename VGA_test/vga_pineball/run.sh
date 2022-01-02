
###
 # @Description: 
 # @Date: 2021-11-18 16:37:33
 # @LastEditTime: 2021-11-18 16:55:14
### 
echo "compiling"
iverilog -o ./build/a.out ./src/*.v && #compile successfully
 vvp ./build/a.out
