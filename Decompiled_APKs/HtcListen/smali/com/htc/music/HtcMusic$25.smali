.class Lcom/htc/music/HtcMusic$25;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$25;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->endAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
