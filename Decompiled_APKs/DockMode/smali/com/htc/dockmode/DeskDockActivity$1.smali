.class Lcom/htc/dockmode/DeskDockActivity$1;
.super Ljava/lang/Object;
.source "DeskDockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/DeskDockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/DeskDockActivity;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/DeskDockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/dockmode/DeskDockActivity$1;->this$0:Lcom/htc/dockmode/DeskDockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/dockmode/DeskDockActivity$1;->this$0:Lcom/htc/dockmode/DeskDockActivity;

    invoke-virtual {v0}, Lcom/htc/dockmode/DeskDockActivity;->finish()V

    .line 69
    return-void
.end method
