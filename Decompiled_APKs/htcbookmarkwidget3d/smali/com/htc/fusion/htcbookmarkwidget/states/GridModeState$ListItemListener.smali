.class Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "GridModeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    .line 311
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;->mState:Lcom/htc/fusion/htcbookmarkwidget/states/IState;

    invoke-interface {v0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/IState;->onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    .line 317
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/GridModeState$ListItemListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
