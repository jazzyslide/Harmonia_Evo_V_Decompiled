.class public Lcom/htc/dlnainterface/DLNAResponseCode;
.super Ljava/lang/Object;
.source "DLNAResponseCode.java"


# static fields
.field public static LOCAL_THUMBDECODE_NOTIFY:I

.field public static NOTIFY_PLAY_QUEUE:I

.field public static NOTIFY_SET_NEXTURI_READY:I

.field public static NOTIFY_SWITCH_ITEM_UPDATE:I

.field public static PLAYLIST_GENERATE_SUCCESS:I

.field public static PLAYLIST_UPDATE_NOTIFY:I

.field public static READY_TO_PLAY:I

.field public static WAITING_RENDERER_RESPONSE:I

.field public static WAITING_SERVER_RESPONSE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x130

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_SERVER_RESPONSE:I

    const/16 v0, -0x131

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_RENDERER_RESPONSE:I

    const/16 v0, -0x135

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    const/16 v0, -0x136

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_GENERATE_SUCCESS:I

    const/16 v0, -0x138

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    const/16 v0, -0x139

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SET_NEXTURI_READY:I

    const/16 v0, -0x13b

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->LOCAL_THUMBDECODE_NOTIFY:I

    const/16 v0, -0x13d

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_PLAY_QUEUE:I

    const/16 v0, -0x140

    sput v0, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_UPDATE_NOTIFY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
