.class Lcom/htc/android/mail/MailListItemBig$4;
.super Ljava/lang/Object;
.source "MailListItemBig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListItemBig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListItemBig;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListItemBig;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig$4;->this$0:Lcom/htc/android/mail/MailListItemBig;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig$4;->this$0:Lcom/htc/android/mail/MailListItemBig;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListItemBig;->markStar()V

    .line 382
    return-void
.end method
