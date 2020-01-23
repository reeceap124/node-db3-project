const db = require('../data/schemesDbConfig.js');

module.exports = {
    
}

function find() {
    return db('schemes');
};

function findById(id) {
    if (id) {
       return db('schemes').where({id});
    } else {
        return null
    }
}

function findSteps(id) {
    if (id) {
        return db('steps')
        .join('schemes', 'steps.scheme_id', 'schemes.id')
        .where('scheme_id', id);
    } else {
        return null;
    }
}

function add(scheme) {
    return db('schemes').insert(scheme);
}

function update(scheme, id) {
    if (id) {
        return db('schemes').where({id}).update(scheme);
    } else {
        return null
    }
}

function remove(id) {
    if (id) {
        return db('schemes').where({id}).del();
    } else {
        return null
    }
}