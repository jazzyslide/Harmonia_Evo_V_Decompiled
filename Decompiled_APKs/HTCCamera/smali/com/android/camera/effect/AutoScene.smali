.class public final Lcom/android/camera/effect/AutoScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "AutoScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1

    const-string v0, "auto"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public getDisabledImageSettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
