.class Lcom/android/htccontacts/DeDuplicationActivity$13;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/DeDuplicationActivity;->displayDialogNoDuplicateContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$13;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$13;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->finish()V

    .line 786
    return-void
.end method
