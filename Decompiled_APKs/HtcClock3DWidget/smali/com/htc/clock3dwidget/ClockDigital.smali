.class public Lcom/htc/clock3dwidget/ClockDigital;
.super Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;
.source "ClockDigital.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "saved"

    .prologue
    .line 10
    sget-object v0, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_DIGITAL:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    iput-object v0, p0, Lcom/htc/clock3dwidget/ClockDigital;->mClockType:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    .line 11
    invoke-super {p0, p1}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidgetView;->onCreate(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method
