.class public abstract Landroid/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# instance fields
.field private mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ActionProvider;->mSubUiVisibilityListener:Landroid/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Landroid/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
