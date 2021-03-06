terraform {
  required_providers {
    discord = {
      source = "Chaotic-Logic/discord"
      version = "0.0.1"
    }
  }
}

variable "discord_token" {
  type = string
  sensitive = true
}

variable "discord_server_id" {
  type = string
}

provider discord {
  token = var.discord_token
}

data discord_server deezcord_server {
  server_id = var.discord_server_id
}

// Categories

resource discord_category_channel information {
  name = "Information"
  server_id = data.discord_server.deezcord_server.id
  position = 1
}

resource discord_category_channel text_channels {
  name = "Text Channels"
  server_id = data.discord_server.deezcord_server.id
  position = 4
}

resource discord_category_channel voice_channels {
  name = "Voice Channels"
  server_id = data.discord_server.deezcord_server.id
  position = 8
}

// Channels

resource discord_text_channel rules {
  name = "rules"
  server_id = data.discord_server.deezcord_server.id
  position = 0
  sync_perms_with_category = false
}

resource discord_text_channel welcome {
  name = "welcome"
  server_id = data.discord_server.deezcord_server.id
  position = 1
  sync_perms_with_category = false
}

resource discord_text_channel moderator {
  name = "moderator-only"
  server_id = data.discord_server.deezcord_server.id
  position = 2
  sync_perms_with_category = false
}

resource discord_text_channel announcements {
  name = "announcements"
  server_id = data.discord_server.deezcord_server.id
  position = 3
  sync_perms_with_category = false
  category = discord_category_channel.information.id
}

resource discord_text_channel resources {
  name = "resources"
  server_id = data.discord_server.deezcord_server.id
  position = 4
  sync_perms_with_category = false
  category = discord_category_channel.information.id
}

resource discord_text_channel roles {
  name = "roles"
  server_id = data.discord_server.deezcord_server.id
  position = 5
  sync_perms_with_category = false
  category = discord_category_channel.information.id
  topic = "ยศต่างๆ และเงื่อนไขในการอวยยศ"
}

resource discord_text_channel introduce {
  name = "introduce"
  server_id = data.discord_server.deezcord_server.id
  position = 6
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "แนะนำตัว"
}

resource discord_text_channel general {
  name = "general"
  server_id = data.discord_server.deezcord_server.id
  position = 7
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "คุยเรื่องทั่วไป"
}

resource discord_text_channel feedback {
  name = "feedback"
  server_id = data.discord_server.deezcord_server.id
  position = 8
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "สอบถาม เสนอแนะ ให้ความเห็น เกี่ยวกับ Manoonchai Layout โดยเฉพาะ"
}

resource discord_text_channel progress {
  name = "progress"
  server_id = data.discord_server.deezcord_server.id
  position = 9
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "โชว์ผลงานการฝึกพิมพ์ผ่าน https://manoontype.web.app หรือเว็บไซต์อื่นๆ"
}

resource discord_text_channel manoontype_next {
  name = "manoontype-next"
  server_id = data.discord_server.deezcord_server.id
  position = 10
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "About new version of Manoontype, website for practicing Manoonchai layout"
}

resource discord_text_channel random {
  name = "random"
  server_id = data.discord_server.deezcord_server.id
  position = 11
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "เรื่องอื่นๆ, นอกเรื่อง, ออกทะเล"
}

resource discord_text_channel no_mic {
  name = "no-mic"
  server_id = data.discord_server.deezcord_server.id
  position = 12
  sync_perms_with_category = true
  category = discord_category_channel.text_channels.id
  topic = "ฅุยกับห้องเสียง"
}

// Channels : Voice

resource discord_voice_channel lounge {
  bitrate = 128000
  name = "ใตหลสปักิบ"
  server_id = data.discord_server.deezcord_server.id
  position = 9
  category = discord_category_channel.voice_channels.id
}

resource discord_voice_channel meeting_room {
  bitrate = 128000
  name = "งเรนมอา่้วื"
  server_id = data.discord_server.deezcord_server.id
  position = 10
  category = discord_category_channel.voice_channels.id
}

// Roles
// Import : terraform import discord_role.role_name guild_id:role_id

data discord_permission admin {
  administrator = "allow"
}

resource discord_role wpm_30 {
  name = "30wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 5
}

resource discord_role wpm_40 {
  name = "40wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 6
}

resource discord_role wpm_50 {
  name = "50wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 7
}

resource discord_role wpm_60 {
  name = "60wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 8
}

resource discord_role wpm_70 {
  name = "70wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 9
}

resource discord_role wpm_80 {
  name = "80wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 10
}

resource discord_role wpm_90 {
  name = "90wpm"
  server_id = data.discord_server.deezcord_server.id
  color = 15277667
  hoist = true
  permissions = 104189505
  position = 11
}

resource discord_role salim_typer {
  name = "Salim Typer"
  server_id = data.discord_server.deezcord_server.id
  color = 15844367
  hoist = false
  permissions = 104189505
  position = 2
}

resource discord_role early_adopters {
  name = "Early Adopters"
  server_id = data.discord_server.deezcord_server.id
  color = 15844367
  hoist = true
  permissions = 104189505
  position = 3
}

// Invitation link

resource discord_invite welcome {
  channel_id = discord_text_channel.welcome.id
  max_age = 3600
}

output invite {
  value = "https://discord.gg/${discord_invite.welcome.id}"
}
