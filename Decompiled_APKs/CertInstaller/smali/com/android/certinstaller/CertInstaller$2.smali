.class Lcom/android/certinstaller/CertInstaller$2;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    const v1, 0x7f060018

    #calls: Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V
    invoke-static {v0, v1}, Lcom/android/certinstaller/CertInstaller;->access$600(Lcom/android/certinstaller/CertInstaller;I)V

    .line 373
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v1, 0x0

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z
    invoke-static {v0, v1}, Lcom/android/certinstaller/CertInstaller;->access$702(Lcom/android/certinstaller/CertInstaller;Z)Z

    .line 374
    return-void
.end method
