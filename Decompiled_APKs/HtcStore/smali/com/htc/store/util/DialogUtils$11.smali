.class final Lcom/htc/store/util/DialogUtils$11;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/util/DialogUtils;->getInternalStorageLowDialogToFinish(Landroid/app/Activity;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finishWhenStartSettings:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/store/util/DialogUtils$11;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/htc/store/util/DialogUtils$11;->val$finishWhenStartSettings:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, lowMemIntent:Landroid/content/Intent;
    const-string v1, "com.htc.lmw"

    const-string v2, "com.htc.lmw.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/htc/store/util/DialogUtils$11;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    iget-boolean v1, p0, Lcom/htc/store/util/DialogUtils$11;->val$finishWhenStartSettings:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/htc/store/util/DialogUtils$11;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 125
    :cond_0
    return-void
.end method
