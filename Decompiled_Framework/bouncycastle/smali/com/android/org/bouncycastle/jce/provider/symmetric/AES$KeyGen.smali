.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$KeyGen;
.super Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$KeyGen;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, "AES"

    new-instance v1, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
