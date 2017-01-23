"steam/cached/SettingsSubFriends.res"
{
	styles
	{
		Label
		{
			textcolor="White"
			selectedtextcolor="White"
			font-family="semilight"
			font-weight=300
			font-style=regular
			font-size=28
		}
		URLLabel
		{
			textcolor="none"
			render
			{
				1="fill( x0, y0, x1, y0+1, ClientBG )"
			}
		}
	}
	layout
	{
		//Avatar
		place { control="Label2" margin-right=8 }
		place { control="ImageAvatar" y=37 margin-left=6 width=32 height=32 }
		place { control="ImageAvatarOverlay" y=30 margin-left=-1 width=32 height=32 }
		place { control="URLLabel1" y=30 margin-left=-1 width=46 height=46 }

		//Name Entry
		place { control="NameEntry" height=34 width=260 x=34 y=36 margin-left=14 }

		//Checks
		place { control="AutoSignIntoFriendsCheck,ShowTimeInChatLogCheck,AlwaysNewChatCheck" y=65 height=24 margin-top=16 dir=down spacing=0 }

		//Notifications
		place { control="Divider1" y=163 margin-right=8 }
		place { start=Divider1 control="Label4,JoinGameNotifyCheck,JoinGamePlaySoundCheck,Label5,FriendOnlineNotifyCheck,FriendOnlinePlaySoundCheck,Label6,ReceiveMessageNotifyCheck,ReceiveMessagePlaySoundCheck,Label7,FlashModeAlways,FlashModeMinimized,FlashModeNever" dir=down margin-top=8 }

		//Hidden
		place { control="Divider2,Label1,Label3,URLLabel2" width=1 height=1 align=right }
	}
}