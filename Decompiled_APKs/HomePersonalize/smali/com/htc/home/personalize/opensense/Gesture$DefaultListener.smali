.class public Lcom/htc/home/personalize/opensense/Gesture$DefaultListener;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Lcom/htc/home/personalize/opensense/Gesture$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$DefaultListener;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBothFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoomBehavior"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;)Z
    .locals 1
    .parameter "click"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;)Z
    .locals 1
    .parameter "doubleTap"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onDrag(Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;)Z
    .locals 1
    .parameter "drag"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerDown(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onSecondFingerUp(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;)Z
    .locals 1
    .parameter "none"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomIn(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onZoomOut(Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;)Z
    .locals 1
    .parameter "zoom"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method
