.class Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;
.super Landroid/os/ResultReceiver;
.source "ListItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/ListItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchIMEReceiver"
.end annotation


# instance fields
.field private mMyHandler:Landroid/os/Handler;

.field public retryCount:I

.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    .line 1437
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1434
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    .line 1438
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    .line 1439
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1456
    packed-switch p1, :pswitch_data_0

    .line 1469
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1459
    :pswitch_1
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1460
    const-string v0, "EditTextPerference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch IME, retryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->relaunchIME()V

    goto :goto_0

    .line 1456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public relaunchIME()V
    .locals 4

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->mMyHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver$1;-><init>(Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1453
    return-void
.end method
