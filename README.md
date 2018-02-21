# tomcat-external-configuration
External Tomcat configuration repository for the Cloud Foundry java buildpack.

Contains fixes that make `X-Forwarded-For` and `X-Forwarded-Proto` work even in our setup where we have gorouters running on 100.64/10 ranges.

To create the tars:

```
cd tar/tomcat7
tar czvf ../../repo/tomcat7/tomcat-external-configuration-1.0.x.tar.gz .
cd ../..

cd tar/tomcat8
tar czvf ../../repo/tomcat8/tomcat-external-configuration-1.0.x.tar.gz .
cd ../..
```

Then add the newly generated tars to `repo/tomcat{7,8}/index.yml` and push the app again.
