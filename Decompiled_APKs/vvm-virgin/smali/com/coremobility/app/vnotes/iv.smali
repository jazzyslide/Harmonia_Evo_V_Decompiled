.class final Lcom/coremobility/app/vnotes/iv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/iv;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/iv;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/iv;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->removeDialog(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
