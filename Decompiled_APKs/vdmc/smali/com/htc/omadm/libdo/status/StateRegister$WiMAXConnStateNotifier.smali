.class Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;
.super Ljava/util/Observable;
.source "StateRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/status/StateRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiMAXConnStateNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/status/StateRegister;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/status/StateRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->this$0:Lcom/htc/omadm/libdo/status/StateRegister;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public setConnState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->setChanged()V

    .line 55
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->notifyObservers(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
