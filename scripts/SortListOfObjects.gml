var list = argument0
var objectType = argument1

for (i = 0; i < instance_number(objectType); i += 1)
{
    var instance = instance_find(objectType,i);
    j = 0;
    if i > 0
    {
        while list[| j].y < instance.y && ds_list_size(list) > j
        {
            j = j + 1;
        }
    }
    ds_list_insert(list,j,instance);
}
   

