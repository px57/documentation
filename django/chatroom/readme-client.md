******** [SETUP]

git submodule add https://github.com/px57/ng-chatroom ./chatroom

<!-- Define to the app.module.ts -->
import { ChatRoomModule } from 'src/modules/chatroom/chatroom.module';


<!-- Define to the app.component.ts -->
import { ChatroomService } from 'src/modules/chatroom/services/chatroom.service';

<!-- Create the link with  -->
this.chatroomService.call__join_room({
    name: 'en'
    profile__id: 12
});