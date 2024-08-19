module random_nft::bit_vector {

    use std::vector;
    use aptos_std::smart_vector::{Self, SmartVector};



    public entry fun main() {

        let v = smart_vector::new<u64>();

        smart_vector::push_back(&mut v, 10);
        smart_vector::push_back(&mut v, 20);

        let length = smart_vector::length(&v);

        assert!(length == 2, 0);   

        let first_element = smart_vector::borrow(&v, 0);
        assert!(*first_element == 10, 0);

        let second_element = smart_vector::borrow(&v, 1);
        assert!(*second_element == 20, 0);

        let last_element = smart_vector::pop_back(&mut v);

        assert!(last_element == 20, 0);


        smart_vector::destroy_empty(v);


    }


    



}
