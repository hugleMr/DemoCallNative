
cc.Class({
    extends: cc.Component,

    properties: {
        
    },

    start () {
        this.score = 0;
        jsb.reflection.callStaticMethod("NativeCall","authenticatePlayer");
    },

    pushScore () {
        this.score++;
        jsb.reflection.callStaticMethod("NativeCall","pushScore:",this.score);
    },

    showLeaderBoard (){
        jsb.reflection.callStaticMethod("NativeCall","showLeaderboard");
    }
});
