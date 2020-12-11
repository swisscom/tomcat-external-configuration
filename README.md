# tomcat-external-configuration
External Tomcat configuration repository for the Cloud Foundry java buildpack.

Contains fixes that make `X-Forwarded-For` and `X-Forwarded-Proto` work even in our setup where we have gorouters running on 100.64/10 ranges and envoy running on 11.0/8 ranges.

To create the tars:

```
cd tar/tomcat7
tar czvf ../../repo/tomcat7/tomcat-external-configuration-1.0.x.tar.gz .
cd ../..

cd tar/tomcat8
tar czvf ../../repo/tomcat8/tomcat-external-configuration-1.0.x.tar.gz .
cd ../..

cd tar/tomcat9
tar czvf ../../repo/tomcat9/tomcat-external-configuration-1.0.x.tar.gz .
cd ../..
```

Then add the newly generated tars to `repo/tomcat{7,8,9}/index.yml` and push the app again.

You can set the variable <<API_URL>> in the index.yml file. This variable will be substituted on startup with the current host name assigned to this cf app (with the help of the .profile script). If you have new repos (e.g. a new tomcat version, you have to adapt this script as well)
