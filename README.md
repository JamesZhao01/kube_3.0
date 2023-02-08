# kube_3.0

James Zhao's ([jjz005@ucsd.edu](jjz005@ucsd.edu)) repo for all things kubernetes. For SMART4.0/[4.5](https://github.com/Cyoung02/smart4.5) 

For any future developers who try to navigate Nautilus, here is a [tutorial](https://github.com/JamesZhao01/nautilus-tutorial). 

---

Use the ```apply.ps1``` script to apply a system environment variable and replace any instance of ```$env:PAT$``` with the equivalent environment variable on powershell. 
- the script just does a simple replace. This only works with windows powershell

Pass this into kubecli with:
```apply <config.yml> | kubectl apply -f -```
- (the - specifies stdin ([link](https://stackoverflow.com/questions/54032336/need-some-explaination-of-kubectl-stdin-and-pipe])))


## Config Overview
- ```lightning-pod.yml```
  - standard dev pod that launches a pod with Nvidia GPU and ends with ```sleep infinity```
- ```pytorch-img-test.yml```
  - for testing which pytorch versions work on nautilus