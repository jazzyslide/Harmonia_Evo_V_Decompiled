.class Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;
.super Landroid/os/Handler;
.source "PowersaverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[PSaver]handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #getter for: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$100(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[PSaver]SET_ALL_SETTINGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    #calls: Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->setAllSettings()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->access$200(Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity$2;->this$0:Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/powersaver/PowersaverActivity;->finish()V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
    .end packed-switch
.end method
