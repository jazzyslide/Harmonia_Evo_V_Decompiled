.class Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/widget/DropDownList$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList$PopupDataSetObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    iget-object v1, v1, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/htc/widget/DropDownList;->access$1000(Lcom/htc/widget/DropDownList;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList$PopupDataSetObserver$1;->this$1:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    iget-object v1, v1, Lcom/htc/widget/DropDownList$PopupDataSetObserver;->this$0:Lcom/htc/widget/DropDownList;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    #calls: Lcom/htc/widget/DropDownList;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lcom/htc/widget/DropDownList;->access$1100(Lcom/htc/widget/DropDownList;I)V

    :cond_0
    return-void
.end method
