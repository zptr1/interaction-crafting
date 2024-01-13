playsound block.wood.place master @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ oak_planks destroy

summon block_display ~ ~1 ~ {Tags:[crafter_texture],block_state:{Name:"crafting_table"},transformation:{translation:[-0.5002f,-1.0002f,-0.5002f],left_rotation:[0f,0f,0f,1f],scale:[1.0004f,1.0004f,1.0004f],right_rotation:[0f,0f,0f,1f]}}
summon interaction ~ ~1 ~ {Tags:[crafter_base],response:true,width:1,height:0.025f}

summon interaction ~.19 ~1 ~.19 {Tags:[crafter_slot,crafter_slot_0],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:0b,stored_item:{}}}]}
summon interaction ~ ~1 ~.19 {Tags:[crafter_slot,crafter_slot_1],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:1b,stored_item:{}}}]}
summon interaction ~-.19 ~1 ~.19 {Tags:[crafter_slot,crafter_slot_2],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:2b,stored_item:{}}}]}

summon interaction ~.19 ~1 ~ {Tags:[crafter_slot,crafter_slot_3],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:3b,stored_item:{}}}]}
summon interaction ~ ~1 ~ {Tags:[crafter_slot,crafter_slot_4],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:4b,stored_item:{}}}]}
summon interaction ~-.19 ~1 ~ {Tags:[crafter_slot,crafter_slot_5],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:5b,stored_item:{}}}]}

summon interaction ~.19 ~1 ~-.19 {Tags:[crafter_slot,crafter_slot_6],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:6b,stored_item:{}}}]}
summon interaction ~ ~1 ~-.19 {Tags:[crafter_slot,crafter_slot_7],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:7b,stored_item:{}}}]}
summon interaction ~-.19 ~1 ~-.19 {Tags:[crafter_slot,crafter_slot_8],response:true,width:0.16f,height:0.05f,Passengers:[{id:"marker",data:{slot:8b,stored_item:{}}}]}
