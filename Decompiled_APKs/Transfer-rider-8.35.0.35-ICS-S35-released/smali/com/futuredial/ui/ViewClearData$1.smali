.class Lcom/futuredial/ui/ViewClearData$1;
.super Ljava/lang/Object;
.source "ViewClearData.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuredial/ui/ViewClearData;->set_view()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewClearData;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewClearData;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/futuredial/ui/ViewClearData$1;->this$0:Lcom/futuredial/ui/ViewClearData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$1;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/futuredial/ui/DialogManager;->unreg_dialog(Landroid/app/Dialog;)V

    .line 230
    iget-object v0, p0, Lcom/futuredial/ui/ViewClearData$1;->this$0:Lcom/futuredial/ui/ViewClearData;

    iget-object v0, v0, Lcom/futuredial/ui/ViewClearData;->ViewName:Ljava/lang/String;

    const-string v1, "[ok] clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
