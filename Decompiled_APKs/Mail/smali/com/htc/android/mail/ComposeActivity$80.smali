.class Lcom/htc/android/mail/ComposeActivity$80;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->updateRecipientThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9246
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$80;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9251
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$80;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->prepareAndUpdateRecipient()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10600(Lcom/htc/android/mail/ComposeActivity;)V

    .line 9252
    return-void
.end method
