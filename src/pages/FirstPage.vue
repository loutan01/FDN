<template>
  <b-container fluid>
    <b-row>

     <b-col cols="2">
      <b-img left src="https://i.redd.it/4a02i3urf0lz.jpg"  fluid-grow></b-img>
      <b-col>Name</b-col>
      <b-col>Email</b-col>
      <div class="w-100"></div>
      <b-col>Column</b-col>



     </b-col>
     <b-col cols="10">
     <div>
       <b-tabs content-class="mt-3" fill>
         <b-tab title="Wise Words" active>
         <div>
            <b-card>
              <b-media>
                <p>
                  I make music because it helps me to manage the oddity of the human experience. Sharing it helps, in that it acts as a magnet to attract similarly like-minded folk into my weird little life, and as we all know, being able to share this experience with others makes the engine run a little more smoothly.
                </p>
              </b-media>
            </b-card>
          </div>
         </b-tab>
         <b-tab title="Gatherings Attended">
         <template>
            <div>
              <b-table striped hover :items="items"></b-table>
            </div>
          </template>
         </b-tab>
         <b-tab title="Equipment Selection"><p>I have nice field recorders</p></b-tab>
         <b-tab title="Archived Choons"><p> Cold Leftovers go here</p></b-tab>
         <b-tab title="Discussions Activity"><p>I'm active in the community!</p></b-tab>
       </b-tabs>
     </div>
     </b-col>
    </b-row>
  </b-container>
</template>

<script>
  export default {
    data() {
      return {
        items: [
          { name: 'Infrasound', year: 2015, venue: 'Camp NCN'},
          { name: 'Infrasound Equinox', year: 2015, venue: 'Camp NCN' },
          { name: 'Infrasound', year: 2016, venue: 'Highbridge Hills' },
          { name: 'Suboctave', year: 2016, venue: 'Outback Ranch' },
          { name: 'Infrasound', year: 2017, venue: 'Highbridge Hills' },
          { name: 'Suboctave', year: 2017, venue: 'Outback Ranch' },
          { name: '4321', year: 2017, venue: 'Astral Valley' },
        ]
      }
    }
  }
</script>
