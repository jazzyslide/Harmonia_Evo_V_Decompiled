.class Lcom/htc/android/htcime/tutorial/TipSystem$3;
.super Ljava/lang/Object;
.source "TipSystem.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tutorial/TipSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tutorial/TipSystem;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    iget-object v1, v1, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    iget-object v1, v1, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->hide()V

    .line 257
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    .line 258
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/htc/android/htcime/tutorial/TipSystem;->access$076(Lcom/htc/android/htcime/tutorial/TipSystem;I)I

    .line 259
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    iget-object v1, v1, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TipStatus"

    iget-object v3, p0, Lcom/htc/android/htcime/tutorial/TipSystem$3;->this$0:Lcom/htc/android/htcime/tutorial/TipSystem;

    #getter for: Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I
    invoke-static {v3}, Lcom/htc/android/htcime/tutorial/TipSystem;->access$000(Lcom/htc/android/htcime/tutorial/TipSystem;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    return-void
.end method
