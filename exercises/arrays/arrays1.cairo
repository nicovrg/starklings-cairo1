// arrays1.cairo
// Your task is to create an `Array` which holds three elements of type `felt252`.
// The first element shoud be 0.
// Make me compile and pass the test!
// Execute `starklings hint arrays1` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use option::OptionTrait;

fn create_array() -> Array<felt252> {
    let mut array = ArrayTrait::<felt252>::new(); // something to change here...
    array.append(0);
    array.append(0);
    array.append(0);
    array
}

// let mut array = ArrayTrait::<felt252>::new();
//  <=====> 
// let mut array: Array<felt252> = ArrayTrait::new();

// Don't change anything in the test
#[test]
fn test_array_len() {
    let mut array = create_array();
    assert(array.len() == 3, 'Array length is not 3');
    assert(array.pop_front().unwrap() == 0, 'First element is not 0');
}

