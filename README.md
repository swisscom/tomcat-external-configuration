# tomcat-external-configuration
External Tomcat configuration repository for the Cloud Foundry java buildpack.

Contains fixes that make `X-Forwarded-For` and `X-Forwarded-Proto` work even in our setup where we have gorouters running on 100.64/10 ranges.
