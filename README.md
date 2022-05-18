This project shows Qt `Flickable`/`ScrollView` components twitching bug.

So I tried it on different OS with different versions of Qt.
And I also tried to switch `ScrollView` to `Flickable`.

## Qt 5.14.2 [MacOS, Apple M1]

❌ `Flickable`
❌ `ScrollView`

https://user-images.githubusercontent.com/25482501/169024079-541ed58d-6044-4c2f-aafa-46e34d07222f.mov

## Qt 6.3.0 [MacOS, Apple M1]

✅ `Flickable`
❌ `ScrollVew` - now it doesn't twitch, but gets stuck out of bounds) 

https://user-images.githubusercontent.com/25482501/169023251-d9d4f38f-c44c-4e03-9243-1da126b7eeae.mov
