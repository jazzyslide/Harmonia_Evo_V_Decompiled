.class Lcom/htc/android/epst/EPST$5;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/htc/android/epst/EPST$5;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/android/epst/EPST$5;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->getActionType()I
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$300(Lcom/htc/android/epst/EPST;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/android/epst/EPST$5;->this$0:Lcom/htc/android/epst/EPST;

    invoke-virtual {v0}, Lcom/htc/android/epst/EPST;->finish()V

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 514
    iget-object v0, p0, Lcom/htc/android/epst/EPST$5;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    goto :goto_0
.end method
