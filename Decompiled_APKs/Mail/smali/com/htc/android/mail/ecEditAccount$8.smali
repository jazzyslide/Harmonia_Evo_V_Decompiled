.class Lcom/htc/android/mail/ecEditAccount$8;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ecEditAccount;->doSaveAccount()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$8;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$8;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-virtual {v0}, Lcom/htc/android/mail/ecEditAccount;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$8;->this$0:Lcom/htc/android/mail/ecEditAccount;

    const v1, 0x7f0b008c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
