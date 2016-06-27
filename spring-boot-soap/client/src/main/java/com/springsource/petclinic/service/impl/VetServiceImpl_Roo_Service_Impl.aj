// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.service.impl;

import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.repository.GlobalSearch;
import com.springsource.petclinic.repository.VetRepository;
import com.springsource.petclinic.service.api.VetService;
import com.springsource.petclinic.service.impl.VetServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VetServiceImpl_Roo_Service_Impl {
    
    declare parents: VetServiceImpl implements VetService;
    
    declare @type: VetServiceImpl: @Service;
    
    declare @type: VetServiceImpl: @Transactional(readOnly = true);
    
    public VetRepository VetServiceImpl.vetRepository;
    
    @Autowired
    public VetServiceImpl.new(VetRepository vetRepository) {
        this.vetRepository = vetRepository;
    }

    @Transactional(readOnly = false)
    public Vet VetServiceImpl.save(Vet entity) {
        return vetRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void VetServiceImpl.delete(Long id) {
         vetRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<Vet> VetServiceImpl.save(Iterable<Vet> entities) {
        return vetRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void VetServiceImpl.delete(Iterable<Long> ids) {
        List<Vet> toDelete = vetRepository.findAll(ids);
        vetRepository.deleteInBatch(toDelete);
    }
    
    public List<Vet> VetServiceImpl.findAll() {
        return vetRepository.findAll();
    }
    
    public List<Vet> VetServiceImpl.findAll(Iterable<Long> ids) {
        return vetRepository.findAll(ids);
    }
    
    public Vet VetServiceImpl.findOne(Long id) {
        return vetRepository.findOne(id);
    }
    
    public long VetServiceImpl.count() {
        return vetRepository.count();
    }
    
    public Page<Vet> VetServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return vetRepository.findAll(globalSearch, pageable);
    }
    
}