.class final Lcom/google/android/voicesearch/actions/GoToAction$1;
.super Ljava/lang/Object;
.source "GoToAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actions/GoToAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/voicesearch/actions/GoToAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/GoToAction;
    .locals 1
    .parameter "source"

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/voicesearch/actions/GoToAction;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/actions/GoToAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/GoToAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/voicesearch/actions/GoToAction;
    .locals 1
    .parameter "size"

    .prologue
    .line 66
    new-array v0, p1, [Lcom/google/android/voicesearch/actions/GoToAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/GoToAction$1;->newArray(I)[Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v0

    return-object v0
.end method