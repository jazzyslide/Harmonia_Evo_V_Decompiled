.class public final Lcom/futuredial/pim/Telephony$MmsSms$PendingMessages;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Lcom/futuredial/pim/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Telephony$MmsSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingMessages"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DUE_TIME:Ljava/lang/String; = "due_time"

.field public static final ERROR_CODE:Ljava/lang/String; = "err_code"

.field public static final ERROR_TYPE:Ljava/lang/String; = "err_type"

.field public static final LAST_TRY:Ljava/lang/String; = "last_try"

.field public static final MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final PROTO_TYPE:Ljava/lang/String; = "proto_type"

.field public static final RETRY_INDEX:Ljava/lang/String; = "retry_index"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1506
    sget-object v0, Lcom/futuredial/pim/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "pending"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
