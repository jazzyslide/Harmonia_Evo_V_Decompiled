.class Lcom/android/htccontacts/HtcViewContactDetailActivity$1;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #getter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$000(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, ipDialNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$1;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    .line 304
    return-void
.end method
