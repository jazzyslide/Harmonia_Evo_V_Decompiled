.class Lcom/htc/WifiRouter/WifiRouter$12;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$12;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter$12;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setHotspotStatus()V
    invoke-static {v0}, Lcom/htc/WifiRouter/WifiRouter;->access$2600(Lcom/htc/WifiRouter/WifiRouter;)V

    .line 715
    return-void
.end method
