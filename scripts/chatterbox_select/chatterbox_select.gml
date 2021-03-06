/// @param chatterbox
/// @param optionIndex

function chatterbox_select(_chatterbox, _index)
{
    with(_chatterbox)
    {
        if ((_index < 0) || (_index >= array_length(option)))
        {
            __chatterbox_trace("Out of bounds option index (got ", _index, ", maximum index for options is ", array_length(option)-1, ")");
            return undefined;
        }
        
        local_scope = other;
        
        current_instruction = option_instruction[_index];
        __chatterbox_vm();
    }
}