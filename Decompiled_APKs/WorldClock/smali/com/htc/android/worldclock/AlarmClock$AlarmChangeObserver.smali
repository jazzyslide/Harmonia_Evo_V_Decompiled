.class Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;
.super Landroid/database/ContentObserver;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    .line 686
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 687
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 688
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 692
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 693
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #getter for: Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmClock;->access$300(Lcom/htc/android/worldclock/AlarmClock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/AlarmClock;->mAlarmChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmClock;->access$602(Lcom/htc/android/worldclock/AlarmClock;Z)Z

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #getter for: Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmClock;->access$700(Lcom/htc/android/worldclock/AlarmClock;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
