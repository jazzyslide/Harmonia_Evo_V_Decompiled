.class Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$1;
.super Landroid/os/Handler;
.source "ActivityMainBaseHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->onMessageHandler(Landroid/os/Message;)V

    return-void
.end method
