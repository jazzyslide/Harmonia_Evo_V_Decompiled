.class Lcom/android/mms/ui/UndeliveredMessagesActivity$6;
.super Landroid/os/Handler;
.source "UndeliveredMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$6;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$6;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$6;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method