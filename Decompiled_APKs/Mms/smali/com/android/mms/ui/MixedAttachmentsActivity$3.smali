.class Lcom/android/mms/ui/MixedAttachmentsActivity$3;
.super Ljava/lang/Object;
.source "MixedAttachmentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(IILcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MixedAttachmentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$3;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$3;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MixedAttachmentsActivity;->finish()V

    .line 290
    return-void
.end method
