package com.suehay.fsastorageservice.service;

import com.suehay.fsastorageservice.model.entity.ImageData;
import com.suehay.fsastorageservice.model.request.UploadRequest;
import com.suehay.fsastorageservice.model.response.GenericResponse;

import java.util.List;

public interface FileStorageService {
    GenericResponse<String> save(UploadRequest file);

    GenericResponse<ImageData> getByName(String name);

    GenericResponse<List<ImageData>> findAllByNameIn(List<String> names);

    void deleteByName(String name);

    String getAddressByName(String name);

    List<String> getAddressByNames(List<String> images);
}