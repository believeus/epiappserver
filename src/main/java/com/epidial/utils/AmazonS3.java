package com.epidial.utils;


import org.springframework.stereotype.Component;
import software.amazon.awssdk.core.ResponseBytes;
import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.*;
import software.amazon.awssdk.regions.Region;

import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
@Component
public class AmazonS3 {
    public static String  bucketName="epidial-fastq-data";

    public  byte[] download(String bucketName, String keyName) {
        try {
            S3Client s3 = S3Client.builder().region(Region.US_EAST_1).build();
            GetObjectRequest objectRequest = GetObjectRequest.builder().key(keyName).bucket(bucketName).build();
            ResponseBytes<GetObjectResponse> objectBytes = s3.getObjectAsBytes(objectRequest);
            byte[] data = objectBytes.asByteArray();
            System.out.println("Successfully obtained bytes from an S3 object");
            s3.close();
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  null;
    }

    public  String putS3Object(String bucketName, String objectKey, byte[] fdata) {
        try {
            S3Client s3 = S3Client.builder().region(Region.US_EAST_1).build();
            Map<String, String> metadata = new HashMap<>();
            metadata.put("Author", "hkgepi");
            PutObjectRequest putOb = PutObjectRequest.builder().bucket(bucketName).key(objectKey).metadata(metadata).build();
            PutObjectResponse response = s3.putObject(putOb, RequestBody.fromBytes(fdata));
            String data=response.eTag();
            s3.close();
            return  data;
        } catch (S3Exception e) {
            System.err.println(e.getMessage());
            return e.getMessage();
        }

    }
    public  void listBucketObjects(String bucketName ) {
        try {
            S3Client s3 = S3Client.builder().region(Region.US_EAST_1).build();
            ListObjectsRequest listObjects = ListObjectsRequest.builder().bucket(bucketName).build();
            ListObjectsResponse res = s3.listObjects(listObjects);
            List<S3Object> objects = res.contents();
            for (ListIterator iterVals = objects.listIterator(); iterVals.hasNext(); ) {
                S3Object myValue = (S3Object) iterVals.next();
                System.out.println(" The name of the key is " + myValue.key());
                System.out.println("\n The owner is " + myValue.owner());
            }
            s3.close();
        } catch (S3Exception e) {
            System.err.println(e.awsErrorDetails().errorMessage());
        }
    }
}
