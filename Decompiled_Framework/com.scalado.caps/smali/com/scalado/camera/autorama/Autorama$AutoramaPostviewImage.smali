.class Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
.super Lcom/scalado/camera/autorama/Autorama$AutoramaImage;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoramaPostviewImage"
.end annotation


# instance fields
.field private mImage:Lcom/scalado/base/Image;

.field private mTransform:Lcom/scalado/caps/autorama/Transform;

.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object p2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mImage:Lcom/scalado/base/Image;

    iput-object p3, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    return-void
.end method


# virtual methods
.method public addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mImage:Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {p1, v0, v1}, Lcom/scalado/caps/autorama/Stitcher;->addImage(Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    return-void
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 2

    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    return-object v0
.end method

.method public getDimensions()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method
